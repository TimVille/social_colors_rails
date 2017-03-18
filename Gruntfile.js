module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    sass: {
      dev: {
        options: {
          style: 'expanded',
          sourcemap: 'none'
        },
        files: {
          "app/assets/stylesheets/<%= pkg.name %>.css" : "app/assets/stylesheets/<%= pkg.name %>/init.scss"
        }
      }
    },
    cssmin: {
      options: {
        mergeIntoShorthands: false,
        roundingPrecision: -1
      },
      target: {
        files: {
          'app/assets/stylesheets/<%= pkg.name %>.min.css': ['app/assets/stylesheets/<%= pkg.name %>.css']
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-cssmin');

  // Default task(s).
  grunt.registerTask('default', ['sass', 'cssmin']);

};
