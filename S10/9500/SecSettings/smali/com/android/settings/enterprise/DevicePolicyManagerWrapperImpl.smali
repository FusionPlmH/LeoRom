.class public Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;


# instance fields
.field private final mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method
