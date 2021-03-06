      !-------------------------------------------------------------------------
      !  Module       :               ppm_module_map_field
      !-------------------------------------------------------------------------
      !
      !  Purpose      : This module contains all data structures and
      !                 definitions that are PRIVATE to the mesh routines.
      !                 It also included those routines and provides
      !                 INTERFACEs.
      !                
      !  Remarks      : The terminology distinguishes between meshes and
      !                 fields (the data living on the meshes). Several
      !                 fields can use the same mesh. Meshes are defined as
      !                 ppm-internal TYPES, whereas fields are
      !                 user-provided arrays.
      !
      !  References   :
      !
      !  Revisions    :
      !-------------------------------------------------------------------------
      !  $Log: ppm_module_map_field.f,v $
      !  Revision 1.1.1.1  2006/07/25 15:18:20  menahel
      !  initial import
      !
      !  Revision 1.1  2004/07/26 07:29:43  ivos
      !  First commit after spitting the old modules into single-interface
      !  units.
      !
      !-------------------------------------------------------------------------
      !  Perallel Particle Mesh Library (PPM)
      !  Institute of Computational Science
      !  ETH Zentrum, Hirschengraben 84
      !  CH-8092 Zurich, Switzerland
      !-------------------------------------------------------------------------

      !-------------------------------------------------------------------------
      !  Define types
      !-------------------------------------------------------------------------
#define __SINGLE_PRECISION         1
#define __DOUBLE_PRECISION         2
#define __INTEGER                  3
#define __LOGICAL                  4
#define __SINGLE_PRECISION_COMPLEX 5
#define __DOUBLE_PRECISION_COMPLEX 6
#define __2D                       7
#define __3D                       8
#define __SFIELD                   9
#define __VFIELD                   10

      MODULE ppm_module_map_field

         !----------------------------------------------------------------------
         !  Define interface to ppm_map_field
         !----------------------------------------------------------------------
         INTERFACE ppm_map_field
             ! Versions for scalar fields
             MODULE PROCEDURE ppm_map_field_2d_sca_s
             MODULE PROCEDURE ppm_map_field_2d_sca_d
             MODULE PROCEDURE ppm_map_field_2d_sca_i
             MODULE PROCEDURE ppm_map_field_2d_sca_l
             MODULE PROCEDURE ppm_map_field_2d_sca_sc
             MODULE PROCEDURE ppm_map_field_2d_sca_dc
             MODULE PROCEDURE ppm_map_field_3d_sca_s
             MODULE PROCEDURE ppm_map_field_3d_sca_d
             MODULE PROCEDURE ppm_map_field_3d_sca_i
             MODULE PROCEDURE ppm_map_field_3d_sca_l
             MODULE PROCEDURE ppm_map_field_3d_sca_sc
             MODULE PROCEDURE ppm_map_field_3d_sca_dc

             ! Versions for vector fields
             MODULE PROCEDURE ppm_map_field_2d_vec_s
             MODULE PROCEDURE ppm_map_field_2d_vec_d
             MODULE PROCEDURE ppm_map_field_2d_vec_i
             MODULE PROCEDURE ppm_map_field_2d_vec_l
             MODULE PROCEDURE ppm_map_field_2d_vec_sc
             MODULE PROCEDURE ppm_map_field_2d_vec_dc
             MODULE PROCEDURE ppm_map_field_3d_vec_s
             MODULE PROCEDURE ppm_map_field_3d_vec_d
             MODULE PROCEDURE ppm_map_field_3d_vec_i
             MODULE PROCEDURE ppm_map_field_3d_vec_l
             MODULE PROCEDURE ppm_map_field_3d_vec_sc
             MODULE PROCEDURE ppm_map_field_3d_vec_dc
         END INTERFACE

         !----------------------------------------------------------------------
         !  Include the source
         !----------------------------------------------------------------------
         CONTAINS

#define __DIM __SFIELD
#define __KIND __SINGLE_PRECISION
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __DOUBLE_PRECISION
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND
         
#define __KIND __SINGLE_PRECISION_COMPLEX
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND
         
#define __KIND __DOUBLE_PRECISION_COMPLEX
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __INTEGER
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __LOGICAL
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND
#undef __DIM

#define __DIM __VFIELD
#define __KIND __SINGLE_PRECISION
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __DOUBLE_PRECISION
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __SINGLE_PRECISION_COMPLEX
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __DOUBLE_PRECISION_COMPLEX
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __INTEGER
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND

#define __KIND __LOGICAL
#define __MESH_DIM  __2D
#include "ppm_map_field.f"
#undef __MESH_DIM
#define __MESH_DIM  __3D
#include "ppm_map_field.f"
#undef __MESH_DIM
#undef __KIND
#undef __DIM

      END MODULE ppm_module_map_field
