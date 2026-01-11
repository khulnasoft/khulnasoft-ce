# Welcome to KhulnaSoft

KhulnaSoft is a free Project/Repository management application.

## Application Details

- **Rails**: 3.1
- **Requirements**: Works only with gitosis
- **Database**: SQLite as default

## Getting Started

1.  Clone the application.
2.  Setup and configure [gitosis](https://help.ubuntu.com/community/Git) (use "git" as the gitosis username).
3.  Change directory to `app` and run the configuration script:
    ```bash
    ruby configure.rb
    # OR specify environment:
    # ruby configure.rb production
    # ruby configure.rb test
    # ruby configure.rb development
    ```
4.  Check the `config/gitosis.yml` file.
5.  Start the Rails application:
    ```bash
    rails s
    ```
6.  Go to http://localhost:3000/ to see the project management page.
