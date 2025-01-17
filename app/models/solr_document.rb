# -*- encoding : utf-8 -*-
class SolrDocument

  include Blacklight::Solr::Document
  include Geoblacklight::SolrDocument
  include WmsRewriteConcern
  include B1gLicensedDataConcern

  # self.unique_key = 'id'
  self.unique_key = 'layer_slug_s'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension( Blacklight::Document::Email )

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension( Blacklight::Document::Sms )

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension( Blacklight::Document::DublinCore)

  # @TODO: flush out proper DC record
  self.field_semantics.merge!(
    :creator => "dc_creator_sm",
    :description => "dc_description_s",
    :format => "dc_format_s",
    :identifier => "dc_identifier_s",
    :language => "dc_language_s",

    # @TODO: multiple publisher fields
    #:publisher => "dc_publisher_s",
    :publisher => "dc_publisher_sm",
    :relation => "dc_relation_sm",
    :rights => "dc_rights_s",
    :source => "dc_source_sm",
    :subject => "dc_subject_sm",
    :title => "dc_title_s",
    :type => "dc_type_s",

    # @TODO: multiple relation fields
    #:relation => "dct_isPartOf_sm",

    :coverage => "dct_spatial_sm",
    :date => "dct_temporal_sm",

    # @TODO: contributor or provenance?
    # @TODO: provenance isn't supported out of the box by BL
    :contributor => "dct_provenance_s"
  )

  def sidecar
    # Find or create, and set version
    sidecar = SolrDocumentSidecar.where(
      document_id: id,
      document_type: self.class.to_s
    ).first_or_create do |sc|
      sc.version = self._source["_version_"]
    end

    # Set version - if doc has changed we'll reimage, someday
    sidecar.version = self._source["_version_"]
    sidecar.save

    sidecar
  end

  def uris
    uris = Array.new

    self.references.refs.each do |ref|
      uri = SolrDocumentUri.where(
        document_id: id,
        document_type: self.class.to_s,
        uri_key: ref.reference[0],
        uri_value: ref.reference[1]
      ).first_or_create do |sc|
        sc.version = self._source["_version_"]
      end

      uris << uri
    end

    return uris
  end
end
