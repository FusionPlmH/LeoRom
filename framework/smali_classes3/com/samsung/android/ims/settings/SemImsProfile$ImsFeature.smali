.class public Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;
.super Ljava/lang/Object;
.source "SemImsProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/settings/SemImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsFeature"
.end annotation


# static fields
.field public static final MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final SMSIP:Ljava/lang/String; = "smsip"

.field private static final mImsFeatureList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "mmtel-video"

    const-string/jumbo v1, "mmtel"

    const-string/jumbo v2, "smsip"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->mImsFeatureList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidImsFeature(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;->mImsFeatureList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
