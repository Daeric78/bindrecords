# == Class: bindrecords
#
# A Puppet module to update dns records on an existing dns server
#
# === Parameters
#
# [*records*]
#   a hash of dns records you wish to add
# [*defaults*]
#   a hash of default parameters you wish to add


class bindrecords (
        Optional[Hash] $records = undef, 
        Optional[Hash] $defaults = undef
) 
{
        create_resources(dns_rr, deep_merge($records, hiera_hash('bindrecords::dnsrecords')), deep_merge($defaults, hiera_hash('bindrecords::defaults')))
}
