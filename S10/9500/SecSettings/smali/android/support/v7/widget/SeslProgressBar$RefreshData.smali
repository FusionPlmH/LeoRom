.class Landroid/support/v7/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final sPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<",
            "Landroid/support/v7/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->sPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZZ)Landroid/support/v7/widget/SeslProgressBar$RefreshData;
    .locals 2

    sget-object v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->sPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    if-nez v0, :cond_0

    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    invoke-direct {v1}, Landroid/support/v7/widget/SeslProgressBar$RefreshData;-><init>()V

    move-object v0, v1

    :cond_0
    iput p0, v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->id:I

    iput p1, v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->progress:I

    iput-boolean p2, v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->fromUser:Z

    iput-boolean p3, v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->animate:Z

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->sPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
