.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI6_SIGNAL_STRENGTH:[I

.field static final WIFI_ACTIVITY_DEFAULT:[I

.field static final WIFI_ACTIVITY_KT:[I

.field static final WIFI_ACTIVITY_LGT:[I

.field static final WIFI_ACTIVITY_VZW:[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI6_SIGNAL_STRENGTH:[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_11

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_LGT:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_13

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_KT:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_ACTIVITY_VZW:[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v4

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x7f08076c
        0x7f08076d
        0x7f08076e
        0x7f08076f
        0x7f080770
    .end array-data

    :array_1
    .array-data 4
        0x7f080776
        0x7f080778
        0x7f08077a
        0x7f08077c
        0x7f08077e
    .end array-data

    :array_2
    .array-data 4
        0x7f080762
        0x7f080763
        0x7f080764
        0x7f080765
        0x7f080766
    .end array-data

    :array_3
    .array-data 4
        0x7f080771
        0x7f080772
        0x7f080773
        0x7f080774
        0x7f080775
    .end array-data

    :array_4
    .array-data 4
        0x7f080777
        0x7f080779
        0x7f08077b
        0x7f08077d
        0x7f08077f
    .end array-data

    :array_5
    .array-data 4
        0x7f080767
        0x7f080768
        0x7f080769
        0x7f08076a
        0x7f08076b
    .end array-data

    :array_6
    .array-data 4
        0x7f080767
        0x7f080768
        0x7f080769
        0x7f08076a
        0x7f08076b
    .end array-data

    :array_7
    .array-data 4
        0x7f080573
        0x7f080574
        0x7f080575
        0x7f080576
        0x7f080577
    .end array-data

    :array_8
    .array-data 4
        0x7f080573
        0x7f080574
        0x7f080575
        0x7f080576
        0x7f080577
    .end array-data

    :array_9
    .array-data 4
        0x7f0806e7
        0x7f0806e8
        0x7f0806e9
        0x7f0806ea
        0x7f0806eb
    .end array-data

    :array_a
    .array-data 4
        0x7f0806e2
        0x7f0806e3
        0x7f0806e4
        0x7f0806e5
        0x7f0806e6
    .end array-data

    :array_b
    .array-data 4
        0x7f08078e
        0x7f08078f
        0x7f080790
        0x7f080791
        0x7f080792
    .end array-data

    :array_c
    .array-data 4
        0x7f08078e
        0x7f08078f
        0x7f080790
        0x7f080791
        0x7f080792
    .end array-data

    :array_d
    .array-data 4
        0x7f080785
        0x7f080786
        0x7f080787
        0x7f080788
        0x7f080789
    .end array-data

    :array_e
    .array-data 4
        0x7f080785
        0x7f080786
        0x7f080787
        0x7f080788
        0x7f080789
    .end array-data

    :array_f
    .array-data 4
        0x7f08076c
        0x7f08076d
        0x7f08076e
        0x7f08076f
        0x7f080770
    .end array-data

    :array_10
    .array-data 4
        0x7f08079a
        0x7f08079b
        0x7f08079c
        0x7f08079d
        0x7f08079e
    .end array-data

    :array_11
    .array-data 4
        0x7f080797
        0x7f080783
        0x7f080799
        0x7f080784
    .end array-data

    :array_12
    .array-data 4
        0x7f080795
        0x7f080793
        0x7f080796
        0x7f080794
    .end array-data

    :array_13
    .array-data 4
        0x7f08078c
        0x7f08078a
        0x7f08078d
        0x7f08078b
    .end array-data

    :array_14
    .array-data 4
        0x7f08072b
        0x7f080715
        0x7f080734
        0x7f080723
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
