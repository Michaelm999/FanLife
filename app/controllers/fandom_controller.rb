class FandomController < ApplicationController
  def index
      @fandoms = Fandom.all
    end

    def show
        @fandom = Fandom.find(params[:id])
    end

    def new
      @fandom = Fandom.new
    end

  def create
      @fandom = Fandom.new({
      title: params[:fandom][:title],
      source: params[:fandom][:source],
      description: params[:fandom][:description]
      })

        if @fandom.save
          redirect_to fandoms_path
        else
          redirect_to new_fandom_path
        end
      end

      def edit
        @fandom  = Fandom.find(params[:id])
        puts @fandom.inspect
      end

      def update
        puts "=========================="
        puts params
        puts "=========================="
        @fandom = Fandom.find(params[:id])
        @fandom.title = params[:fandom][:title]
        @fandom.source = params[:fandom][:source]
        @fandom.description = params[:fandom][:description]
        @fandom.save

        redirect_to fandoms_path
      end

      def destroy
        @fandom = Fandom.find(params[:id])
        @fandom .destroy
        redirect_to fandoms_path
      end
    end
