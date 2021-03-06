use utf8;
package Schema::Result::RoleCapability;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::RoleCapability

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<role_capability>

=cut

__PACKAGE__->table("role_capability");

=head1 ACCESSORS

=head2 role_id

  data_type: 'bigint'
  is_foreign_key: 1
  is_nullable: 0

=head2 cap_name

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 last_updated

  data_type: 'timestamp with time zone'
  default_value: current_timestamp
  is_nullable: 1
  original: {default_value => \"now()"}

=cut

__PACKAGE__->add_columns(
  "role_id",
  { data_type => "bigint", is_foreign_key => 1, is_nullable => 0 },
  "cap_name",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "last_updated",
  {
    data_type     => "timestamp with time zone",
    default_value => \"current_timestamp",
    is_nullable   => 1,
    original      => { default_value => \"now()" },
  },
);

=head1 RELATIONS

=head2 cap_name

Type: belongs_to

Related object: L<Schema::Result::Capability>

=cut

__PACKAGE__->belongs_to(
  "cap_name",
  "Schema::Result::Capability",
  { name => "cap_name" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);

=head2 role

Type: belongs_to

Related object: L<Schema::Result::Role>

=cut

__PACKAGE__->belongs_to(
  "role",
  "Schema::Result::Role",
  { id => "role_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-03-27 14:22:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QKteDmebV7GN1Oc5uwNo7A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
1;
