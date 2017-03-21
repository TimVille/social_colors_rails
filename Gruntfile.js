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
    },
    copy: {
      main: {
        files: [
          { expand: true, src: 'README.md', dest: 'docs/', filter: 'isFile' },
          { expand: true, flatten: true, src: 'app/assets/stylesheets/social_colors_rails.min.css', dest: 'docs/', filter: 'isFile' }
        ]
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-copy');

  // Default task(s).
  grunt.registerTask('default', ['sass', 'cssmin', 'copy']);

};
