.class public Lcom/samsung/android/sepunion/SemGoodCatchManager;
.super Ljava/lang/Object;
.source "SemGoodCatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_GOOD_CATCH_STATE_CHANGED:Ljava/lang/String; = "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/sepunion/IGoodCatchManager;


# instance fields
.field private final MSG_START:I

.field private final MSG_STOP:I

.field private mContext:Landroid/content/Context;

.field private mFunction:[Ljava/lang/String;

.field private final mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

.field private final mHandler:Landroid/os/Handler;

.field private final mICallback:Landroid/os/IBinder;

.field private mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mModule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "goodcatch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGoodCatchManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    sget-object v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to SemGoodCatchManager; no service."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    iget-object v3, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    iget-object v5, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    invoke-interface {v2, v3, p3, v4, v5}, Lcom/samsung/android/sepunion/IGoodCatchManager;->registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    sget-object v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemGoodCatchManager is created, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object v0
.end method


# virtual methods
.method public update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update; no service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    const/4 v3, 0x6

    aput-object p5, v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/sepunion/IGoodCatchManager;->update([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
