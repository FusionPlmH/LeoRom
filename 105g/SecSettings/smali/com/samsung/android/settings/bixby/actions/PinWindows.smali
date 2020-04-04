.class public Lcom/samsung/android/settings/bixby/actions/PinWindows;
.super Ljava/lang/Object;
.source "PinWindows.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/settings/bixby/actions/PinWindows;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/PinWindows;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/PinWindows;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/PinWindows;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doSetAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actions/PinWindows;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->setLockToAppEnabled(Landroid/content/Context;Z)V

    const-string/jumbo v1, "success"

    return-object v1
.end method
