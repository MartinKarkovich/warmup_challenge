# frozen_string_literal: true

module JsonHelpers
  def body_json
    @body_json ||= JSON.parse(response.body)
  end

  def data
    body_json["data"]
  end

  def meta
    body_json["meta"]
  end
end
