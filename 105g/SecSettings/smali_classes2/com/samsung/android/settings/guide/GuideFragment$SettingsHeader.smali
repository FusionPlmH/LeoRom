.class final enum Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;


# instance fields
.field private final mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

.field private final mHeaderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v6, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v8, "WIFI"

    sget-object v12, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const/4 v9, 0x1

    const-wide/32 v10, 0x7f0a096c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    new-instance v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v2, "BLUETOOTH"

    sget-object v6, Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    const/4 v3, 0x2

    const-wide/32 v4, 0x7f0a0111

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/samsung/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    iput-object p5, p0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->mGuideMode:Lcom/samsung/android/settings/guide/GuideFragment$GuideModes;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method
