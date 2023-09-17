% Define the decision tree rules for predicting happiness with dynamic arguments
predict_happiness(Result, Party, Goal, Laptop, Innovative, Assignment, Project, Smart) :-
    (
        (Party =< 0.50, Goal =< 0.50, Laptop =< 0.50, Innovative =< 0.50, Smart =< 0.50) -> Result = yes ;
        (Party =< 0.50, Goal =< 0.50, Laptop =< 0.50, Innovative =< 0.50, Smart > 0.50) -> Result = yes ;
        (Party =< 0.50, Goal =< 0.50, Laptop =< 0.50, Innovative > 0.50, Assignment =< 0.50) -> Result = yes ;
        (Party =< 0.50, Goal =< 0.50, Laptop =< 0.50, Innovative > 0.50, Assignment > 0.50) -> Result = yes ;
        (Party =< 0.50, Goal =< 0.50, Laptop > 0.50, Smart =< 0.50) -> Result = yes ;
        (Party =< 0.50, Goal =< 0.50, Laptop > 0.50, Smart > 0.50) -> Result = yes ;
        (Party =< 0.50, Goal > 0.50, Laptop =< 0.50, Smart =< 0.50) -> Result = yes ;
        (Party =< 0.50, Goal > 0.50, Laptop =< 0.50, Smart > 0.50) -> Result = yes ;
        (Party =< 0.50, Goal > 0.50, Laptop > 0.50) -> Result = yes ;
        (Party > 0.50, Goal =< 0.50, Laptop =< 0.50, Project =< 0.50, Smart =< 0.50) -> Result = yes ;
        (Party > 0.50, Goal =< 0.50, Laptop =< 0.50, Project =< 0.50, Smart > 0.50) -> Result = yes ;
        (Party > 0.50, Goal =< 0.50, Laptop =< 0.50, Project > 0.50, Innovative =< 0.50) -> Result = yes ;
        (Party > 0.50, Goal =< 0.50, Laptop =< 0.50, Project > 0.50, Innovative > 0.50) -> Result = yes ;
        (Party > 0.50, Goal > 0.50, Laptop =< 0.50, Assignment =< 0.50) -> Result = yes ;
        (Party > 0.50, Goal > 0.50, Laptop =< 0.50, Assignment > 0.50) -> Result = yes ;
        (Party > 0.50, Goal > 0.50, Laptop > 0.50, Innovative =< 0.50) -> Result = yes ;
        (Party > 0.50, Goal > 0.50, Laptop > 0.50, Innovative > 0.50) -> Result = yes ;
        % If none of the conditions match, set Result to no
        Result = no
    ).
