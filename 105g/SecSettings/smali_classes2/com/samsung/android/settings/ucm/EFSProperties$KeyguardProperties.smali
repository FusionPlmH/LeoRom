.class public Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ucm/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->csName:[B

    iput-object v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->storageType:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->enabledSCP:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pinMinLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pinMaxLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pukMinLength:I

    iput v0, p0, Lcom/samsung/android/settings/ucm/EFSProperties$KeyguardProperties;->pukMaxLength:I

    return-void
.end method
