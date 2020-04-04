.class public abstract Lcom/sec/android/secsetupwizardlib/SuwBaseActivityVzw;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SuwBaseActivityVzw.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mProgressBar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const-string v0, "SuwBaseActivityVzw"

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivityVzw;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivityVzw;->mProgressBar:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onPause()V

    return-void
.end method
