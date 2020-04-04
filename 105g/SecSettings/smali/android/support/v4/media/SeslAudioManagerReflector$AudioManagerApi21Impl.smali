.class Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerApi21Impl;
.super Ljava/lang/Object;
.source "SeslAudioManagerReflector.java"

# interfaces
.implements Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/SeslAudioManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioManagerApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SeslAudioManagerReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/SeslAudioManagerReflector$AudioManagerApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SOUND_TIME_PICKER_SCROLL()I
    .locals 3

    invoke-static {}, Landroid/support/v4/media/SeslAudioManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SOUND_TIME_PICKER_SCROLL"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
