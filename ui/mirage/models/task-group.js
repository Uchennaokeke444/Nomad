import { Model, belongsTo, hasMany } from 'ember-cli-mirage';

export default Model.extend({
  job: belongsTo(),
  services: hasMany('service-fragment'),
  tasks: hasMany(),
});
