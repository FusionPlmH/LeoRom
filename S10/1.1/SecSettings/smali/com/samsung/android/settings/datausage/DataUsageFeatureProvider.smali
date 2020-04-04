.class public interface abstract Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;
.super Ljava/lang/Object;
.source "DataUsageFeatureProvider.java"


# virtual methods
.method public abstract formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
.end method

.method public abstract formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
.end method

.method public abstract isMDODimmed(Landroid/content/Context;)Z
.end method

.method public abstract isSupportATTMobileData()Z
.end method

.method public abstract isSupportInternationalDataRoaming()Z
.end method

.method public abstract makeMDODisablePopup(Landroid/content/Context;)Landroid/app/AlertDialog;
.end method
