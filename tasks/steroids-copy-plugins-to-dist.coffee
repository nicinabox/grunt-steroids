
module.exports = (grunt)->

  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-extend-config"

  grunt.registerTask "steroids-plugins-to-dist", "Copy plugins/ to dist/", ->

    grunt.extendConfig
      copy:
        plugins_to_dist:
          expand: true
          cwd: "plugins/"
          src: ["*"]
          dest: "dist/"

    grunt.task.run "copy:plugins_to_dist"
