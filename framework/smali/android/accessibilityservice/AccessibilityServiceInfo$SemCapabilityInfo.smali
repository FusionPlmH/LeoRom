.class public final Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemCapabilityInfo"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    return-object v0
.end method
