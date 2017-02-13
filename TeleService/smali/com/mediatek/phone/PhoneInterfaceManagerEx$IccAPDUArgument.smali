.class final Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I

.field public pathId:Ljava/lang/String;

.field public pin2:Ljava/lang/String;

.field public simSlotId:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;I)V
    .locals 1
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "pathId"    # Ljava/lang/String;
    .param p8, "simSlotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->channel:I

    .line 258
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->cla:I

    .line 259
    iput p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->command:I

    .line 260
    iput p4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p1:I

    .line 261
    iput p5, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p2:I

    .line 262
    iput p6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p3:I

    .line 263
    iput-object p7, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pathId:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->data:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pin2:Ljava/lang/String;

    .line 266
    iput p8, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    .line 267
    return-void
.end method

.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "pathId"    # Ljava/lang/String;
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .param p10, "simSlotId"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->channel:I

    .line 272
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->cla:I

    .line 273
    iput p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->command:I

    .line 274
    iput p4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p1:I

    .line 275
    iput p5, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p2:I

    .line 276
    iput p6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->p3:I

    .line 277
    iput-object p7, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pathId:Ljava/lang/String;

    .line 278
    iput-object p8, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->data:Ljava/lang/String;

    .line 279
    iput-object p9, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->pin2:Ljava/lang/String;

    .line 280
    iput p10, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$IccAPDUArgument;->simSlotId:I

    .line 281
    return-void
.end method
