.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenDockedStackPositioner$7UbWYqrsn4ARe5IkK9qU_jKitTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenDockedStackPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenDockedStackPositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenDockedStackPositioner$7UbWYqrsn4ARe5IkK9qU_jKitTo;->f$0:Lcom/android/server/wm/SideScreenDockedStackPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenDockedStackPositioner$7UbWYqrsn4ARe5IkK9qU_jKitTo;->f$0:Lcom/android/server/wm/SideScreenDockedStackPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenDockedStackPositioner;->lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenDockedStackPositioner;)V

    return-void
.end method
