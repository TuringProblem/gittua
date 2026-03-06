open Command

  let run = function
    | Clone -> Git.clone_repo ()    
    | RugPull -> Git.update_repo ()    
    | Status -> Git.show_status ()    
    | Branch -> Git.branch_management ()    
    | Quit -> ()    
