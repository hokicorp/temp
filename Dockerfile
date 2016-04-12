FROM ruby:2.1-onbuild 
ARG GIT_COMMIT_ID
RUN mkdir -p ${GIT_COMMIT_ID}
CMD ["ruby", "./server.rb"]
