.class public Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
    }
.end annotation


# static fields
.field private static mSetResult:I

.field private static mUserNavigated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mSetResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mSetResult:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mSetResult:I

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:hide_drawer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120686

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121496

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    :goto_0
    return-void
.end method
