.class Lcom/android/phone/NotificationMgr$NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field public callVideo:I

.field public date:J

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public presentation:I

.field public slotId:I

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
