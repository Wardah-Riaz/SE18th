# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/home'
    when /the login page/
      '/login'
    when /the loginInstructor page/
      '/loginInstructor'
    when /the signup page/
      '/signup'
    when /the signupInstructor page/
      '/signupInstructor'
    when /the student page/
      '/students/1'
    when /the instructors page/
      '/instructor1s/1'
    when /the discussion page/
      '/discussions'
    when /the discussionCreated page/
      '/discussions/3'
    when /the courses page/
      '/courses'
    when /the instructorcourses page/
      '/instructorcourses/new'
    when /the coursecreated page/
      '/instructorcourses/3'
    when /the instructorcourses page/
      '/instructorcourses'
instructorcourses

    
    

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
