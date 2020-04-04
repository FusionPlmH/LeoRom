.class public Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;
.super Ljava/lang/Object;
.source "SemVirtualSpaceSession.java"


# static fields
.field public static final VIRTUAL_KEYBOARD_MODE_DISABLED:I = -0x1

.field public static final VIRTUAL_KEYBOARD_MODE_FOLLOW:I = 0x1

.field public static final VIRTUAL_KEYBOARD_MODE_SINGLE:I


# instance fields
.field private final mSession:Lcom/samsung/android/virtualspace/IVSSession;


# direct methods
.method constructor <init>(Lcom/samsung/android/virtualspace/IVSSession;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    const-string v1, "SemVirtualSpaceSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    return-void
.end method

.method private static validateFlags(I)V
    .locals 1

    and-int/lit8 v0, p0, -0x71

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string v0, "SemVirtualSpace"

    const-string/jumbo v1, "session close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0}, Lcom/samsung/android/virtualspace/IVSSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public createScreen(I)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
    .locals 5

    const-string v0, "SemVirtualSpace"

    const-string v1, "createScreen(0x%x)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->validateFlags(I)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0, p1}, Lcom/samsung/android/virtualspace/IVSSession;->createScreenDefault(I)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;-><init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public createScreen(IIII)Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
    .locals 5

    const-string v0, "SemVirtualSpace"

    const-string v1, "createScreen(%d, %d, %d, 0x%x)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->validateFlags(I)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/virtualspace/IVSSession;->createScreen(IIII)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;-><init>(Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0, p1}, Lcom/samsung/android/virtualspace/IVSSession;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setMouseCursorVisibility(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0, p1}, Lcom/samsung/android/virtualspace/IVSSession;->setMouseCursorVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVirtualKeyboardMode(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemVirtualSpace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVirtualKeyboardMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/virtualspace/SemVirtualSpaceSession;->mSession:Lcom/samsung/android/virtualspace/IVSSession;

    invoke-interface {v0, p1}, Lcom/samsung/android/virtualspace/IVSSession;->setVirtualKeyboardMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemVirtualSpace"

    const-string v2, "Call failed with"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
