require 'spec_helper'
require 'rspec_website_helpers'
require 'active_support/all'

HUNSPELL_DICTIONARY_FILE= "spec/hunspell_en_US"
HUNSPELL_BASE_DICTIONARIES  = "en_US"

CONTEXT = ENV['API_DOCS_CONTEXT'].presence || '/api/docs'

describe "Testing the web site", type: :feature  do
  include_context :test_website, CONTEXT
end
