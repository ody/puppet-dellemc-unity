# frozen_string_literal: true

require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'unity_lun',
  docs: <<-EOS,
@summary a Unity lun type
@example
lun { 'N-1':
  ensure => 'present',
}

EOS
  features: ['remote_resource'],
  attributes: {
    id: {
      type:       'String',
      desc:       'The lun id',
      behaviour:  :namevar,
      field_name: 'id',
    },
    health: {
      type:       'Hash',
      desc:       'The lun health',
      field_name: 'health',
    },
    name: {
      type:       'String',
      desc:       'The lun name',
      field_name: 'name',
    },
    description: {
      type:       'String',
      desc:       'The lun description',
      field_name: 'description',
    },
    type: {
      type:       'Integer',
      desc:       'The lun type',
      field_name: 'type',
    },
    pool: {
      type:       'Hash',
      desc:       'The pool the lun is defined on',
      field_name: 'pool',
    },
    size_total: {
      type:       'Integer',
      desc:       'The total size of the lun',
      field_name: 'sizeTotal',
    },
  },
)