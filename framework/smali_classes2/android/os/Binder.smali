.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field public static LOG_RUNTIME_EXCEPTION:Z = false

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x1f4

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static volatile sDumpDisabled:Ljava/lang/String;

.field private static volatile sTracingEnabled:Z

.field private static volatile sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile sWarnOnBlocking:Z


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private final mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    sget-object v0, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/Binder;->mObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-object p0
.end method

.method public static final native blockUntilThreadAvailable()V
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method public static copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    move-object v1, p0

    check-cast v1, Landroid/os/BinderProxy;

    iget-boolean v1, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_0
    return-void
.end method

.method public static defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_0
    return-object p0
.end method

.method public static disableTracing()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return-void
.end method

.method public static enableTracing()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return-void
.end method

.method private execTransact(IJJI)Z
    .locals 13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->getInstance()Lcom/android/internal/os/BinderCallsStats;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BinderCallsStats;->callStarted(Landroid/os/Binder;I)Lcom/android/internal/os/BinderCallsStats$CallSession;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->isTracingEnabled()Z

    move-result v0

    move v8, v0

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v2, v6, v7, v3}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :goto_2
    nop

    :try_start_1
    sget-boolean v11, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    if-eqz v11, :cond_1

    const-string v11, "Binder"

    const-string v12, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    and-int/lit8 v11, v3, 0x1

    if-eqz v11, :cond_3

    instance-of v11, v0, Landroid/os/RemoteException;

    if-eqz v11, :cond_2

    const-string v11, "Binder"

    const-string v12, "Binder call failed."

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    const-string v11, "Binder"

    const-string v12, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->setDataSize(I)V

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    const/4 v0, 0x1

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    :goto_4
    nop

    const-string v9, "Unreasonably large binder reply buffer"

    invoke-static {v1, v2, v7, v9}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    invoke-virtual {v4, v5}, Lcom/android/internal/os/BinderCallsStats;->callEnded(Lcom/android/internal/os/BinderCallsStats$CallSession;)V

    return v0

    :goto_5
    if-eqz v8, :cond_5

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    throw v0
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native getFinalizer()J
.end method

.method private static native getNativeBBinderHolder()J
.end method

.method private static native getNativeFinalizer()J
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method public static declared-synchronized getTransactionTracker()Landroid/os/TransactionTracker;
    .locals 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    :cond_0
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .locals 1

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTracingEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return v0
.end method

.method public static final joinThreadPool()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    return-void
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    return-void
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method

.method public static setWarnOnBlocking(Z)V
    .locals 0

    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    return-void
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    throw v3

    :catch_0
    move-exception v3

    move-object v2, v3

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    throw v3

    :catch_0
    move-exception v3

    move-object v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Exception occurred while dumping:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Landroid/os/Binder$1;

    const-string v3, "Binder.dumpAsync"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p6, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x1

    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_0
    const v4, 0x5f444d50

    if-ne v1, v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p0

    :try_start_1
    invoke-virtual {v14, v6, v5}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_1
    move-object/from16 v14, p0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    :goto_2
    return v0

    :cond_3
    move-object/from16 v14, p0

    const v4, 0x5f434d44

    if-ne v1, v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v15

    sget-object v7, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/os/ShellCallback;

    sget-object v7, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/os/ResultReceiver;

    if-eqz v5, :cond_7

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object v8, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    :goto_4
    move-object v10, v7

    move-object v7, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :goto_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6

    :cond_6
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    :goto_6
    throw v0

    :cond_7
    :goto_7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    nop

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public pingBinder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1
    return v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
