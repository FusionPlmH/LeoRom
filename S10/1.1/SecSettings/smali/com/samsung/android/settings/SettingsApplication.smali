.class public Lcom/samsung/android/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;
    }
.end annotation


# instance fields
.field private final mKnoxInfo:Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;-><init>(Lcom/samsung/android/settings/SettingsApplication;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mKnoxInfo:Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;

    return-void
.end method


# virtual methods
.method public getKnoxInfo()Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mKnoxInfo:Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "SettingsApplication#onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "SettingsApplication#LoggingHelper.init"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->init(Landroid/app/Application;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
