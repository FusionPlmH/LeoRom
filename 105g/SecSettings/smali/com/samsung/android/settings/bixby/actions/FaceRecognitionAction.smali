.class public Lcom/samsung/android/settings/bixby/actions/FaceRecognitionAction;
.super Ljava/lang/Object;
.source "FaceRecognitionAction.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/FaceRecognitionAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    const-string v0, "on"

    return-object v0
.end method
