require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/index'

describe Web::Controllers::Books::Index do
  let(:action) { Web::Controllers::Books::Index.new }
  let(:params) { Hash[] }
  let(:repo) { BookRepository.new }

  before do
    repo.clear

    @book = repo.create(title: 'TDD', author: 'Kent Beck')
  end

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end

  it 'exposes all books' do
    action.call(params)
    action.exposures[:books].must_equal [@book]
  end
end
