.class public Lcom/sec/android/secsetupwizardlib/util/WizardSystemBarHelper;
.super Ljava/lang/Object;
.source "WizardSystemBarHelper.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/secsetupwizardlib/util/WizardSystemBarHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/sec/android/secsetupwizardlib/util/WizardSystemBarHelper;->addVisibilityFlag(Landroid/view/View;I)V

    return-void

    :cond_0
    return-void
.end method

.method private static addImmersiveFlagsToWindow(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static hideSystemBars(Landroid/content/Context;Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x1202

    invoke-static {p0}, Lcom/sec/android/secsetupwizardlib/util/SuwUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    :cond_0
    invoke-static {p1, v0}, Lcom/sec/android/secsetupwizardlib/util/WizardSystemBarHelper;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-static {p1, v0}, Lcom/sec/android/secsetupwizardlib/util/WizardSystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method
