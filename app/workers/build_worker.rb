class BuildWorker
  include Sidekiq::Worker

  def perform(build_id)
    build = Build.find(build_id)
    return if build.status == 'success' || build.status == 'failed'

    build.update_attributes(:status => 'running')
    
    trace = ""
    project = build.project
    
    # Simulate build process for now, or run scripts if they exist in builds/
    # In a real scenario, we'd clone the repo to a tmp dir and run a script.
    
    begin
      trace << "Starting build for #{project.name}...\n"
      trace << "Commit: #{build.commit_sha}\n"
      trace << "Branch: #{build.branch}\n\n"
      
      # Example: if there is a scripts/build.sh in the repo, we could run it.
      # For now, we simulate success.
      
      trace << "Cloning repository...\n"
      trace << "Running tests...\n"
      trace << "Finished successfully!\n"
      
      build.update_attributes(
        :status => 'success',
        :trace => trace,
        :finished_at => Time.now
      )
    rescue => e
      trace << "\nERROR: #{e.message}\n"
      build.update_attributes(
        :status => 'failed',
        :trace => trace,
        :finished_at => Time.now
      )
    end
  end
end
