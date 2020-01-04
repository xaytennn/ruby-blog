class PagePostsController < ApplicationController
  before_action :set_page_post, only: [:show, :edit, :update, :destroy]

  # GET /page_posts
  # GET /page_posts.json
  def index
    @page_posts = PagePost.all
  end

  # GET /page_posts/1
  # GET /page_posts/1.json
  def show
  end

  # GET /page_posts/new
  def new
    @page_post = PagePost.new
  end

  # GET /page_posts/1/edit
  def edit
  end

  # POST /page_posts
  # POST /page_posts.json
  def create
    @page_post = PagePost.new(page_post_params)

    respond_to do |format|
      if @page_post.save
        format.html { redirect_to @page_post, notice: 'Page post was successfully created.' }
        format.json { render :show, status: :created, location: @page_post }
      else
        format.html { render :new }
        format.json { render json: @page_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_posts/1
  # PATCH/PUT /page_posts/1.json
  def update
    respond_to do |format|
      if @page_post.update(page_post_params)
        format.html { redirect_to @page_post, notice: 'Page post was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_post }
      else
        format.html { render :edit }
        format.json { render json: @page_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_posts/1
  # DELETE /page_posts/1.json
  def destroy
    @page_post.destroy
    respond_to do |format|
      format.html { redirect_to page_posts_url, notice: 'Page post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_post
      @page_post = PagePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_post_params
      params.require(:page_post).permit(:title, :body)
    end
end
