.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$3;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->access$500(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->access$400(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->access$000(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)V

    return-void
.end method
