.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$2;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->access$200(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->access$300(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
