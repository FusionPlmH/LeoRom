.class Lcom/sec/android/clipboardprotection/Clipboardprotection$1;
.super Ljava/lang/Object;
.source "Clipboardprotection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/clipboardprotection/Clipboardprotection;->ssSave(Ljava/lang/String;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clpUid:I

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$file:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$obj:Ljava/lang/Object;

    iput p3, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$clpUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$file:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$obj:Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/clipboardprotection/Clipboardprotection$1;->val$clpUid:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->ssSave_impl(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
