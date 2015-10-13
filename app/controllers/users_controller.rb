class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def show
        @user = User.find(params[:id])
    end
 
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user ,
                notice: 'Cadastrado com sucesso!'
        else
            render action: :new,
                notice: 'Erro no cadastro'
        end
    end 
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user ,
                notice: 'Cadastro atualizado com sucesso!'
        else
            render action: :edit
        end
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    private 
    
    def user_params
        params.
            require(:user).
            permit(:email, :full_name, :password, :password_confirmation)
    end
end        

