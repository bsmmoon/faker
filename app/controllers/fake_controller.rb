class FakeController < ApplicationController
  def index
    fixtures = YAML.load(Rails.root.join("config/fixtures.yml").read).map(&:symbolize_keys)
    fixtures = fixtures.map { |fixture| ["#{fixture[:request_method]} #{fixture[:fullpath]}", fixture[:response]] }.to_h
    render json: fixtures["#{request.request_method} #{request.fullpath}"]
  end
end
