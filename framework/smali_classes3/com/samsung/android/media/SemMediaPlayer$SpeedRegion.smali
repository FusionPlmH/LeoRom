.class Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedRegion"
.end annotation


# instance fields
.field audioEnd:I

.field speedRate:I

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;

.field videoEnd:I

.field videoStart:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;-><init>(Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method
