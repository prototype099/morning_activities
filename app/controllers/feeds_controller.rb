# encoding: utf-8
class FeedsController < ApplicationController

  require 'net/http'
  require 'rubygems'
  require 'hpricot'
  require 'open-uri'

  def index

    # 監視URLを取得 
    activities = Activity.where("disable = ? ", 0)

    # scraping
    activities.each do |activity|

      doc = Hpricot(open(URI.encode(activity.main_url)).read )

      @arr = []
      (doc/"table.event_table tr").each do |tr| 

        (tr/"td.event_name").each do |elm|
          @arr << elm.inner_html
        end

        (tr/"td.event_date").each { |elm| @arr << elm.inner_html }
        (tr/"td.event_prefecture").each { |elm| @arr << elm.inner_html }
        (tr/"td.event_strength").each { |elm| @arr << elm.inner_html }
        (tr/"td.event_hosts").each { |elm| @arr << elm.inner_html }
        (tr/"td.event_description").each { |elm| @arr << elm.inner_html }

      end

    end

    

    # url = URI.parse('http://kokucheese.com/main/host/%E5%90%8D%E5%8F%A4%E5%B1%8B%E3%81%8A%E3%81%AF%E3%82%88%E3%81%86meeting')
    # req = Net::HTTP::Get.new(url.path)
    # @res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) } 

  end


end
