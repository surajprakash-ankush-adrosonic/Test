CREATE INDEX sov_details_uploader_id ON sov_details (uploader_id);
CREATE INDEX sov_details_uploader_company_id ON sov_details (uploader_company_id);
CREATE INDEX sov_details_retailer_id ON sov_details (retailer_id);
CREATE INDEX sov_details_account_id ON sov_details (account_id);

CREATE INDEX sov_property_sov_details_id ON sov_property (sov_details_id);

CREATE INDEX company_role ON company (role);

CREATE INDEX s3_file_uploader_id ON s3_file (uploader_id);
CREATE INDEX s3_file_sov_details_id ON s3_file (sov_details_id);

CREATE INDEX layer_sov_details_id ON layer (sov_details_id);

CREATE INDEX quote_sov_details_id ON quote (sov_details_id);
CREATE INDEX quote_underwriter_id ON quote (underwriter_id);
CREATE INDEX quote_uploader_id ON quote (uploader_id);
CREATE INDEX quote_layer_id ON quote (layer_id);

CREATE INDEX comment_sov_details_id ON comment (sov_details_id);
CREATE INDEX comment_quote_id ON comment (quote_id);
CREATE INDEX comment_company_id ON comment (company_id);

CREATE INDEX event_sov_details_id ON event (sov_details_id);
