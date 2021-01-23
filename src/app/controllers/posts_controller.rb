class PostsController < ApplicationController

  def index
    @posts = Post.all
  end


  def new
    @post = Post.new
  end


  def create
    @post = Post.new(
      title: params[:title],
      start_day: params[:start_day],
      finish_day: params[:finish_day],
      all_day: params[:all_day],
      schedule_memo: params[:schedule_memo]
    )
    if @post.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to("/posts")
    else
      render("posts/new")
    end
  end


  def show
    @post = Post.find_by(id: params[:id])
  end


  def edit
    @post = Post.find_by(id: params[:id])
  end


  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.schedule_memo = params[:schedule_memo]
    @post.start_day = params[:start_day]
    @post.finish_day = params[:finish_day]
    @post.all_day = params[:all_day]
    if @post.save
      flash[:notice] = "スケジュール内容を更新しました"
      redirect_to("/posts")
    else
      render("posts/edit")
    end
  end


  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts")
  end


end
