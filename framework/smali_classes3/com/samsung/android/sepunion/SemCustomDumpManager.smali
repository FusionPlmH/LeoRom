.class public Lcom/samsung/android/sepunion/SemCustomDumpManager;
.super Ljava/lang/Object;
.source "SemCustomDumpManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "union_dump"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/sepunion/IUnionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getService()Lcom/samsung/android/sepunion/IUnionManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    const-string v1, "IUnionManager is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    return-object v0
.end method


# virtual methods
.method public setDumpState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IUnionManager;->setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
