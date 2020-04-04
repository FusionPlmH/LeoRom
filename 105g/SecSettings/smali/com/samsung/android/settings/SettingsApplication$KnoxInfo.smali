.class public final Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;
.super Ljava/lang/Object;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KnoxInfo"
.end annotation


# instance fields
.field private mHasChooseLockResult:Z

.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;->mHasChooseLockResult:Z

    return-void
.end method


# virtual methods
.method public hasChooseLockResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;->mHasChooseLockResult:Z

    return v0
.end method

.method public setHasChooseLockResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SettingsApplication$KnoxInfo;->mHasChooseLockResult:Z

    return-void
.end method
