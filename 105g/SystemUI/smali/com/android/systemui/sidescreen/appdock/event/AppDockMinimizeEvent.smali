.class public Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "AppDockMinimizeEvent.java"


# instance fields
.field public final minimize:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;->minimize:Z

    return-void
.end method
