Rails.application.routes.draw do
 root "rgb#index"
 post "farm" => "rgb#farm"
 post "cave" => "rgb#cave"
 post "house" => "rgb#house"
 post "casino" => "rgb#casino"
end
