.class Lcom/android/server/am/MARsPolicyManager$LevelInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LevelInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private totalSize:D


# direct methods
.method private constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager$LevelInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/am/MARsPolicyManager$LevelInfo;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:D

    return-wide v0
.end method

.method static synthetic access$4408(Lcom/android/server/am/MARsPolicyManager$LevelInfo;)D
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:D

    return-wide v0
.end method
