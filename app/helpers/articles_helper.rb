module ArticlesHelper

  def article_params
	params.require(:article).permit(:title, :body)
  end

<<<<<<< HEAD

=======
>>>>>>> 549219116c00636e22f7bef769c643ef6aaf6364
end
