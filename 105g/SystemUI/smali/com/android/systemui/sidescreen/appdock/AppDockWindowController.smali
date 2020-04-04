.class public Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;
.super Ljava/lang/Object;
.source "AppDockWindowController.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;


# instance fields
.field mWindow:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APPDOCK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {v0, p1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->mWindow:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->mWindow:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->create()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->sInstance:Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->mWindow:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->TAG:Ljava/lang/String;

    const-string v2, "Prevent to show AppDock when lockscreen is showing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindowController;->mWindow:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->show()V

    return-void
.end method
