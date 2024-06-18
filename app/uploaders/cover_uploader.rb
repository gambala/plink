class CoverUploader < Shrine
  plugin :validation_helpers

  Attacher.validate do
    validate_mime_type %w[image/jpeg image/png image/gif]
    validate_max_size 5*1024*1024, message: 'is too large (max is 5 MB)'
  end
end
