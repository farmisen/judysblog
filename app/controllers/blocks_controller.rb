class BlocksController < ApplicationController

  before_filter :load_post


  # GET /blocks
  # GET /blocks.json
  def index
    @blocks = Block.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blocks }
    end
  end

  # GET /blocks/1
  # GET /blocks/1.json
  def show
    @block = Block.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @block }
    end
  end

  # GET /blocks/new
  # GET /blocks/new.json
  def new
    @block = @post.blocks.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block }
    end
  end

  # GET /blocks/1/edit
  def edit
    @block = Block.find(params[:id])
  end

  # POST /blocks
  # POST /blocks.json
  def create
    @block = @post.blocks.new(params[:block])
    # @block.post = @post

    respond_to do |format|
      if @block.save
        format.html { redirect_to edit_post_url(@post), notice: 'Block was successfully created.' }
        format.json { render json: @block, status: :created, location: @block }
      else
        format.html { render action: "new" }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blocks/1
  # PUT /blocks/1.json
  def update
    @block = Block.find(params[:id])
    @block.post = @post
    respond_to do |format|
      if @block.update_attributes(params[:block])
        format.html { redirect_to edit_post_url(@post), notice: 'Block was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end


  def up
    @block = Block.find(params[:block_id])
    @block.move_higher
    respond_to do |format|
      format.html { redirect_to edit_post_url(@post), notice: 'Block was successfully moved up.' }
    end
  end

  def down
    @block = Block.find(params[:block_id])
    @block.move_lower
    respond_to do |format|
      format.html { redirect_to edit_post_url(@post), notice: 'Block was successfully moved down.' }
    end
  end


  # DELETE /blocks/1
  # DELETE /blocks/1.json
  def destroy
    @block = Block.find(params[:id])
    @block.destroy

    respond_to do |format|
      format.html { redirect_to edit_post_url(@post) }
      format.json { head :no_content }
    end
  end

  private
  def load_post
    @post = Post.find(params[:post_id])
  end


end
