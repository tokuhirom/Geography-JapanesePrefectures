package t::TestJP;
use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Geography::JapanesePrefectures;

sub test_prefectures : Test {
    my ( $self, ) = @_;

    is( scalar( Geography::JapanesePrefectures->prefectures ), 47 );
}

sub test_regions : Test(1) {
    my ( $self, ) = @_;

    is( scalar( Geography::JapanesePrefectures->regions ), 11 );
}

sub test_prefectures_in : Test(1) {
    my ( $self, ) = @_;

    is_deeply(
        [
            sort { $a cmp $b }
              Geography::JapanesePrefectures->prefectures_in('関東')
        ],
        [
            sort { $a cmp $b }
              qw(茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県 山梨県)
        ]
    );
}

sub test_prefectures_id : Test {
    my ( $self, ) = @_;

    is( Geography::JapanesePrefectures->prefectures_id('和歌山県'), 30 );
}

sub test_prefectures_infos : Test(3) {
    my ( $self, ) = @_;

    is( ref(Geography::JapanesePrefectures->prefectures_infos()), "ARRAY" );
    is( scalar(@{Geography::JapanesePrefectures->prefectures_infos()}), 47 );
    is_deeply( [sort keys %{Geography::JapanesePrefectures->prefectures_infos()->[0]}], [sort qw(id name region)] );
}

1;
